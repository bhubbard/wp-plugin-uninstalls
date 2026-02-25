-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('service-icon', 'service-external', 'service-page', 'staff-facebook', 'staff-twitter', 'staff-gplus', 'staff-linkedin', 'staff-position', 'testimonial-position', 'testimonial-avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('service-icon', 'service-external', 'service-page', 'staff-facebook', 'staff-twitter', 'staff-gplus', 'staff-linkedin', 'staff-position', 'testimonial-position', 'testimonial-avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('service-icon', 'service-external', 'service-page', 'staff-facebook', 'staff-twitter', 'staff-gplus', 'staff-linkedin', 'staff-position', 'testimonial-position', 'testimonial-avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('service-icon', 'service-external', 'service-page', 'staff-facebook', 'staff-twitter', 'staff-gplus', 'staff-linkedin', 'staff-position', 'testimonial-position', 'testimonial-avatar');

