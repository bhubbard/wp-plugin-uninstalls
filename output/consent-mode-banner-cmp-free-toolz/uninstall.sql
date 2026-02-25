-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('toolzcmpft_banner_id', 'toolzcmpft_banner_enable');

