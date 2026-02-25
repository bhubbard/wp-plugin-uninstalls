-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpm_installed', 'BPM_INSTALLED', 'BPM_VERSION', 'bpmaker_all_pages', 'bpmaker_pages_count');

