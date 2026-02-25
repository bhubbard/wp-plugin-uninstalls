-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'm2i_mage_default_store_code', 'm2i_mage_base_url', 'm2i_notices');

