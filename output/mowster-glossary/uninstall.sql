-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mowsterG_shortcode', 'mowsterG_pagination_word', 'mowster_Glossary_Terms_Per_Page', 'mowsterG_terms_per_page', 'mowsterG_html_before_term', 'mowsterG_html_after_term', 'mowsterG_html_before_description', 'mowsterG_html_after_description', 'mowsterG_text_previous_page', 'mowsterG_text_next_page', 'mowsterG_end_size', 'mowsterG_mid_size');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mowsterG_user_access');
DELETE FROM wp_usermeta WHERE meta_key IN ('mowsterG_user_access');
DELETE FROM wp_termmeta WHERE meta_key IN ('mowsterG_user_access');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mowsterG_user_access');

