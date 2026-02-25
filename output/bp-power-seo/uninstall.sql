-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bp-pages', 'create_map', 'sitemap_update', 'members', 'groups', 'searches', 'bpp_group_list', 'bpp_group_profile', 'bpp_member_list', 'bpp_member_profile', 'bpp_member_profile_tabs', 'bpp_custom_fields', 'create_schema', 'schema_fields');

