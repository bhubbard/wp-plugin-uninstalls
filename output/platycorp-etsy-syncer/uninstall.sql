-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('platy_syncer_etsy_version', 'platy_etsy_default_etsy_shop', 'platy_etsy_error_transient', 'platy_etsy_success_transient');

