-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wdstm_order_filter', 'wdstm-activate-plugin', 'wdstm_default_theme', 'wdstm_sign_db_version');

