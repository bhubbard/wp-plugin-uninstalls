-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_gpos_settings', 'gpos_submenu_pages', 'gpos_clear_export_dir_failed', 'gpos_default_account', 'gpos_db_version', 'gpos_callback_test_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gpos_hide_rating_message', 'gpos_gateway_id', 'gpos_is_installments_active', 'gpos_extra_installments_active', 'gpos_installments', 'note_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('gpos_hide_rating_message', 'gpos_gateway_id', 'gpos_is_installments_active', 'gpos_extra_installments_active', 'gpos_installments', 'note_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('gpos_hide_rating_message', 'gpos_gateway_id', 'gpos_is_installments_active', 'gpos_extra_installments_active', 'gpos_installments', 'note_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gpos_hide_rating_message', 'gpos_gateway_id', 'gpos_is_installments_active', 'gpos_extra_installments_active', 'gpos_installments', 'note_type');

