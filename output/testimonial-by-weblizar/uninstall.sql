-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wltp_testimonial', 'wltp_testimonial_layout', 'wltp_testimonial_layout_1', 'wltp_testimonial_layout_2');
DELETE FROM wp_usermeta WHERE meta_key IN ('wltp_testimonial', 'wltp_testimonial_layout', 'wltp_testimonial_layout_1', 'wltp_testimonial_layout_2');
DELETE FROM wp_termmeta WHERE meta_key IN ('wltp_testimonial', 'wltp_testimonial_layout', 'wltp_testimonial_layout_1', 'wltp_testimonial_layout_2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wltp_testimonial', 'wltp_testimonial_layout', 'wltp_testimonial_layout_1', 'wltp_testimonial_layout_2');

