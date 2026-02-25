-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('thumbnails_per_page', 'paginated_links', 'hide_effect', 'show_effect', 'effect_speed');

