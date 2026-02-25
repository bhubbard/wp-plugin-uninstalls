-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dlift_condition_value', 'dlift_discount_value', 'dlift_discount_type', 'dlift_success_message', 'dlift_success_styles', 'dlift_progress_message', 'dlift_progress_styles', 'dlift_celebration_type');
DELETE FROM wp_usermeta WHERE meta_key IN ('dlift_condition_value', 'dlift_discount_value', 'dlift_discount_type', 'dlift_success_message', 'dlift_success_styles', 'dlift_progress_message', 'dlift_progress_styles', 'dlift_celebration_type');
DELETE FROM wp_termmeta WHERE meta_key IN ('dlift_condition_value', 'dlift_discount_value', 'dlift_discount_type', 'dlift_success_message', 'dlift_success_styles', 'dlift_progress_message', 'dlift_progress_styles', 'dlift_celebration_type');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dlift_condition_value', 'dlift_discount_value', 'dlift_discount_type', 'dlift_success_message', 'dlift_success_styles', 'dlift_progress_message', 'dlift_progress_styles', 'dlift_celebration_type');

