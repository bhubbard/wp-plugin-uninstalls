-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7mls_review');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_cf7mls_next_bg_color', '_cf7mls_next_text_color', '_cf7mls_back_bg_color', '_cf7mls_back_text_color', '_cf7_mls_auto_scroll_animation', '_cf7_mls_auto_return_first_step', '_cf7mls_db_save_every_step');
DELETE FROM wp_usermeta WHERE meta_key IN ('_cf7mls_next_bg_color', '_cf7mls_next_text_color', '_cf7mls_back_bg_color', '_cf7mls_back_text_color', '_cf7_mls_auto_scroll_animation', '_cf7_mls_auto_return_first_step', '_cf7mls_db_save_every_step');
DELETE FROM wp_termmeta WHERE meta_key IN ('_cf7mls_next_bg_color', '_cf7mls_next_text_color', '_cf7mls_back_bg_color', '_cf7mls_back_text_color', '_cf7_mls_auto_scroll_animation', '_cf7_mls_auto_return_first_step', '_cf7mls_db_save_every_step');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_cf7mls_next_bg_color', '_cf7mls_next_text_color', '_cf7mls_back_bg_color', '_cf7mls_back_text_color', '_cf7_mls_auto_scroll_animation', '_cf7_mls_auto_return_first_step', '_cf7mls_db_save_every_step');

