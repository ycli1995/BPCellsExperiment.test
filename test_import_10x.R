devtools::with_debug(devtools::load_all("/develop/ycli1995/hdf5r.Extra"))
# devtools::with_debug(devtools::load_all("/develop/ycli1995/BPCells"))
devtools::with_debug(devtools::load_all("/develop/ycli1995/BPCellsExperiment/"))

# Read multi-genome 10x v2
sce <- read10xH5("/develop/single-cell-data/hgmm_1k/raw_gene_bc_matrices_h5.h5")
sce

sce <- read10xH5("/develop/single-cell-data/hgmm_1k/raw_gene_bc_matrices_h5.h5", use.BPCells = TRUE)
sce
counts(sce[[1]])

sce <- read10xMtx("/develop/single-cell-data/hgmm_1k/filtered_gene_bc_matrices/mm10/", gene.column = 1)
sce

sce <- read10xMtx("/develop/single-cell-data/hgmm_1k/filtered_gene_bc_matrices/mm10/", gene.column = 1, use.BPCells = TRUE)
sce
counts(sce)

# Read multi-genome 10x v3
sce <- read10xH5("/develop/single-cell-data/SC3_v3_NextGem_SI_Human_Mouse_10K/filtered_feature_bc_matrix.h5")
sce

sce <- read10xH5("/develop/single-cell-data/SC3_v3_NextGem_SI_Human_Mouse_10K/filtered_feature_bc_matrix.h5", use.BPCells = TRUE)
sce
counts(sce)

sce <- read10xMtx("/develop/single-cell-data/SC3_v3_NextGem_SI_Human_Mouse_10K/filtered_feature_bc_matrix", gene.column = 1)
sce

sce <- read10xMtx("/develop/single-cell-data/hgmm_1k/filtered_gene_bc_matrices/mm10/", gene.column = 1, use.BPCells = TRUE)
sce
counts(sce)

# Read h5ad
sce <- readH5AD("/develop/jupyter/scanpy_1.10.1_test/adata.h5ad", use.BPCells = TRUE)
sce
gc()

# Write to H5SCE
sce2 <- writeH5SCE(sce, "adata.H5SCE", overwrite = TRUE)
sce2

# Write to H5AD
debug(exportH5AD)
debug(.write_h5ad_sce)
exportH5AD(sce, "adata.h5ad", overwrite = TRUE)

