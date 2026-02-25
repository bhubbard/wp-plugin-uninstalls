-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dx_redirect_to', 'dx_my_editor', 'dx_margin_top', 'dx-dark-site-image', 'dx_redirect_name', 'dx_editor_id', 'dx_margin_field_name', 'image_url');

