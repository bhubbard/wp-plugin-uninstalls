-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opwp_allow_external_pages', 'opwp_allow_category_pages', 'opwp_allow_tag_pages', 'opwp_allow_author_pages', 'opwp_custom_rules');

