-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('faq_cat_page', 'allow_rating_faq', 'on_UNINSTALL_REMOVE_ALL_DATA', 'empty_faq_message', 'rating_depends_on');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('showcase-taxonomy-image-id', 'font_awesome_icon', 'c_icon_color', 'faq_template', 'like', 'deslike', 'faqs_array', 'q_icon_color', 'icon_font_select');
DELETE FROM wp_usermeta WHERE meta_key IN ('showcase-taxonomy-image-id', 'font_awesome_icon', 'c_icon_color', 'faq_template', 'like', 'deslike', 'faqs_array', 'q_icon_color', 'icon_font_select');
DELETE FROM wp_termmeta WHERE meta_key IN ('showcase-taxonomy-image-id', 'font_awesome_icon', 'c_icon_color', 'faq_template', 'like', 'deslike', 'faqs_array', 'q_icon_color', 'icon_font_select');
DELETE FROM wp_commentmeta WHERE meta_key IN ('showcase-taxonomy-image-id', 'font_awesome_icon', 'c_icon_color', 'faq_template', 'like', 'deslike', 'faqs_array', 'q_icon_color', 'icon_font_select');

