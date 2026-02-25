-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eventful_version', 'eventful_first_version', 'eventful_activation_date', 'eventful_review_notice_dismiss', 'eventful_db_version', 'eventful_settings', 'themeatelier_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'themeatelier_offer_banner_dismissed_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('eventful_layouts', 'eventful_view_options', '_wp_attachment_image_alt', '_tribe_featured');
DELETE FROM wp_usermeta WHERE meta_key IN ('eventful_layouts', 'eventful_view_options', '_wp_attachment_image_alt', '_tribe_featured');
DELETE FROM wp_termmeta WHERE meta_key IN ('eventful_layouts', 'eventful_view_options', '_wp_attachment_image_alt', '_tribe_featured');
DELETE FROM wp_commentmeta WHERE meta_key IN ('eventful_layouts', 'eventful_view_options', '_wp_attachment_image_alt', '_tribe_featured');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_eventful_errors_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_eventful_errors_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_eventful_errors_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_eventful_errors_%';

