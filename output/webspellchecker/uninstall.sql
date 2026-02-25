-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wsc_proofreader_info', 'wsc', 'wsc_proofreader_version', 'wsc_proofreader');

