-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rmsmart_404_last_viewed', 'rmsmart_enable_fallback', 'rmsmart_default_type', 'rmsmart_slug_changed_notice');

