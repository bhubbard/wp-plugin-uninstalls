-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('automagicalinks_options', 'autolinking', 'automagicality', 'link_characters', 'link_escape_character', 'allowed_post_types', 'allowed_link_names', 'excluded_elements', 'aliases');

