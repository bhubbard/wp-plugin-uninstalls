-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kaltura_partner_id', 'kaltura_secret', 'kaltura_admin_secret', 'kaltura_cms_user', 'kaltura_subp_id', 'kaltura_default_player_type', 'kaltura_show_media_from', 'kaltura_default_kcw_type', 'kaltura_user_identifier', 'kaltura_root_category', 'kaltura_enable_kcw', 'kaltura_allowed_players');

