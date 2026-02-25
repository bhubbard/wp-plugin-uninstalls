-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jakweblc-lc-options', 'jakweblc-embed-widget-id');

