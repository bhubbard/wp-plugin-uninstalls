-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpac_show_in_menus', 'membee_client_id', 'membee_secret', 'membee_app_id', 'membee_widget_dns', 'wpac_posts_default_restricted_to', 'wpac_pages_default_restricted_to', 'wpac_default_members_redirect', 'wpac_show_posts_in_search', 'wpac_show_post_excerpts_in_search', 'wpac_show_pages_in_search', 'wpac_show_page_excerpts_in_search', 'wpac_members_blog_redirect', 'wpac_members_only_blog', 'wpac_custom_post_types', 'wpac_default_page_state', 'wpac_always_accessible_by', 'wpac_post_excerpt_text', 'wpac_page_excerpt_text', 'wpac_default_post_state');
DELETE FROM wp_options WHERE option_name LIKE '%_state';
DELETE FROM wp_options WHERE option_name LIKE '%s_default_restricted_to';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_name', 'first_name', 'nickname', '_wpac_restricted_to', '_wpac_members_redirect_to', '_wpac_nonmembers_redirect_to', '_wpac_is_members_only', '_wpac_is_nonmembers_only', '_wpac_show_excerpt_in_search', '_wpac_show_in_search', '_wpac_pass_to_children');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_name', 'first_name', 'nickname', '_wpac_restricted_to', '_wpac_members_redirect_to', '_wpac_nonmembers_redirect_to', '_wpac_is_members_only', '_wpac_is_nonmembers_only', '_wpac_show_excerpt_in_search', '_wpac_show_in_search', '_wpac_pass_to_children');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_name', 'first_name', 'nickname', '_wpac_restricted_to', '_wpac_members_redirect_to', '_wpac_nonmembers_redirect_to', '_wpac_is_members_only', '_wpac_is_nonmembers_only', '_wpac_show_excerpt_in_search', '_wpac_show_in_search', '_wpac_pass_to_children');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_name', 'first_name', 'nickname', '_wpac_restricted_to', '_wpac_members_redirect_to', '_wpac_nonmembers_redirect_to', '_wpac_is_members_only', '_wpac_is_nonmembers_only', '_wpac_show_excerpt_in_search', '_wpac_show_in_search', '_wpac_pass_to_children');

