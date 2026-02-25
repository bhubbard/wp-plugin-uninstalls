-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebar_nav_for_wpbakery_disable_description', 'sidebar_nav_for_wpbakery_compact_view', 'sidebar_nav_for_wpbakery_compact_view_edit_form', 'sidebar_nav_for_wpbakery_responsive_view', 'sidebar_nav_for_wpbakery_page_structure', 'sidebar_nav_for_wpbakery_sidebar_position', 'sidebar_nav_for_wpbakery_color_theme');

