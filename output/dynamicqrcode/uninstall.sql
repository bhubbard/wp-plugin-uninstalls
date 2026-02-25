-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynqr_btn_btn_bgcolor', 'dynqr_btn_qr_size', 'dynqr_btn_qr_color', 'dynqr_btn_alt', 'dynqr_btn_title', 'dynqr_emb_size', 'dynqr_emb_bgcolor', 'dynqr_emb_color', 'dynqr_emb_alt', 'dynqr_emb_title', 'dynqr_emb_type', 'dynqr_emb_icon_url', 'dynqr_btn_download', 'dynqr_admin_btn_download', 'dynqr_emb_btn_download', 'dynqr_admin_emb_btn_download', 'dynqr_display', 'dynqr_success', 'dynqr_errors');

