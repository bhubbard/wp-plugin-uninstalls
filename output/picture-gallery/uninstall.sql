-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('VWpictureGalleryOptions', 'VWpaidMembershipOptions', 'VWpictureGalleryWidgetOptions');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('picture-thumbnail', 'picture-views', 'rateStarReview_rating', 'picture-lastview', 'picture-width', 'picture-height', 'picture-source-file', 'picture-snapshot', 'ip_uploader', 'email_uploader', 'bp_activity_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('picture-thumbnail', 'picture-views', 'rateStarReview_rating', 'picture-lastview', 'picture-width', 'picture-height', 'picture-source-file', 'picture-snapshot', 'ip_uploader', 'email_uploader', 'bp_activity_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('picture-thumbnail', 'picture-views', 'rateStarReview_rating', 'picture-lastview', 'picture-width', 'picture-height', 'picture-source-file', 'picture-snapshot', 'ip_uploader', 'email_uploader', 'bp_activity_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('picture-thumbnail', 'picture-views', 'rateStarReview_rating', 'picture-lastview', 'picture-width', 'picture-height', 'picture-source-file', 'picture-snapshot', 'ip_uploader', 'email_uploader', 'bp_activity_id');

