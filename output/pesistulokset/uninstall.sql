-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pesistulokset_api_key', 'pesistulokset_enable_transients', 'pesistulokset_transients_expire');

