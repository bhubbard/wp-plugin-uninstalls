-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cbse_coach_mail_options', 'cbse_auto_print_options', 'cbse_general_options', 'cbse_pdf_header_options', 'cbse_options', 'cbse_covid19_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('cbse_auto_print_mail', 'cbse_auto_print_folder', 'cbse-api-token', 'cbse-auto-inform', 'cbse-auto-print');
DELETE FROM wp_usermeta WHERE meta_key IN ('cbse_auto_print_mail', 'cbse_auto_print_folder', 'cbse-api-token', 'cbse-auto-inform', 'cbse-auto-print');
DELETE FROM wp_termmeta WHERE meta_key IN ('cbse_auto_print_mail', 'cbse_auto_print_folder', 'cbse-api-token', 'cbse-auto-inform', 'cbse-auto-print');
DELETE FROM wp_commentmeta WHERE meta_key IN ('cbse_auto_print_mail', 'cbse_auto_print_folder', 'cbse-api-token', 'cbse-auto-inform', 'cbse-auto-print');

