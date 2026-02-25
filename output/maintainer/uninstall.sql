-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maintainer_secondary_text', 'maintainer_ips', 'maintainer_roles', 'maintainer_active', 'maintainer_query', 'maintainer_show_welcome', 'maintainer_primary_text', 'maintainer_page_title', 'maintainer_page_description', 'maintainer_background_color', 'maintainer_text_color', 'maintainer_noindex', 'maintainer_template');

