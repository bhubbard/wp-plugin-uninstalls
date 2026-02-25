-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amazing_linker_review_notice', 'amazing-linker-activation-time', 'widget_amazing_linker_product_widget', 'amazing_linker_credential_tab_option', 'amazing_linker_associate_tab_option', 'amazing_linker_settings_tab_option');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

