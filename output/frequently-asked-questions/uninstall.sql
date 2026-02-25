-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('selectFAQTemlate', 'enabFAQIndexPage', 'enabFAQWooTab', 'faqTitleBackgroundColor', 'customfaqitemorder');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ffw_use_post_title_and_content_as_faq_via_id', 'no_index_to_this_faq_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('ffw_use_post_title_and_content_as_faq_via_id', 'no_index_to_this_faq_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('ffw_use_post_title_and_content_as_faq_via_id', 'no_index_to_this_faq_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ffw_use_post_title_and_content_as_faq_via_id', 'no_index_to_this_faq_page');

