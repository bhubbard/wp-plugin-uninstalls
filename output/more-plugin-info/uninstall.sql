-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mpi_plugin_meta', 'mpi_sync_timestamp', 'mpi-settings', 'mpi_cron_enable');

