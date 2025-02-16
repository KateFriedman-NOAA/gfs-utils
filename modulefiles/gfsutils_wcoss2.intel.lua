help([[
Build environment for GFS utilities on WCOSS2
]])

local PrgEnv_intel_ver=os.getenv("PrgEnv_intel_ver") or "8.1.0"
local intel_ver=os.getenv("intel_ver") or "19.1.3.304"
local craype_ver=os.getenv("craype_ver") or "2.7.10"
local cray_mpich_ver=os.getenv("cray_mpich_ver") or "8.1.9"
local cmake_ver= os.getenv("cmake_ver") or "3.20.2"

local jasper_ver=os.getenv("jasper_ver") or "2.0.25"
local zlib_ver=os.getenv("zlib_ver") or "1.2.11"
local libpng_ver=os.getenv("libpng_ver") or "1.6.37"
local netcdf_ver=os.getenv("netcdf_ver") or "4.7.4"

local bufr_ver=os.getenv("bufr_ver") or "11.7.0"
local bacio_ver=os.getenv("bacio_ver") or "2.4.1"
local w3emc_ver=os.getenv("w3emc_ver") or "2.9.2"
local sp_ver=os.getenv("sp_ver") or "2.3.3"
local ip_ver=os.getenv("ip_ver") or "3.3.3"
local sigio_ver=os.getenv("sigio_ver") or "2.3.2"
local nemsio_ver=os.getenv("nemsio_ver") or "2.5.2"
local nemsiogfs_ver=os.getenv("nemsiogfs_ver") or "2.5.3"
local wrf_io_ver=os.getenv("wrf_io_ver") or "1.2.0"
local g2_ver=os.getenv("g2_ver") or "3.4.5"
local landsfcutil_ver=os.getenv("landsfcutil_ver") or "2.4.1"
local gempak_ver=os.getenv("gempak_ver") or "7.14.1"
local wgrib2_ver=os.getenv("wgrib2_ver") or "2.0.8"

load(pathJoin("PrgEnv-intel", PrgEnv_intel_ver))
load(pathJoin("intel", intel_ver))
load(pathJoin("craype", craype_ver))
load(pathJoin("cray-mpich", cray_mpich_ver))
load(pathJoin("cmake", cmake_ver))

load(pathJoin("jasper", jasper_ver))
load(pathJoin("zlib", zlib_ver))
load(pathJoin("libpng", libpng_ver))

load(pathJoin("netcdf", netcdf_ver))

load(pathJoin("bufr", bufr_ver))
load(pathJoin("bacio", bacio_ver))
load(pathJoin("w3emc", w3emc_ver))
load(pathJoin("sp", sp_ver))
load(pathJoin("ip", ip_ver))
load(pathJoin("sigio", sigio_ver))
load(pathJoin("sfcio", sfcio_ver))
load(pathJoin("nemsio", nemsio_ver))
load(pathJoin("wrf_io", wrf_io_ver))
load(pathJoin("g2", g2_ver))
load(pathJoin("landsfcutil", landsfcutil_ver))
--load(pathJoin("gempak", gempak_ver))
load(pathJoin("wgrib2", wgrib2_ver))

pushenv("HPC_OPT", "/apps/ops/para/libs")
prepend_path("MODULEPATH", "/apps/ops/para/libs/modulefiles/compiler/intel/19.1.3.304")
prepend_path("MODULEPATH", "/apps/ops/para/libs/modulefiles/mpi/intel/19.1.3.304/cray-mpich/8.1.7")

load("ncio/1.1.2")

whatis("Description: GFS utilities environment on WCOSS2 with Intel Compilers")
