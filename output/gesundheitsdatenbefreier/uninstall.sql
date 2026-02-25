-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gesundheitsdatenbefreier_mail_text', 'gesundheitsdatenbefreier_threshold', 'gesundheitsdatenbefreier_info_text', 'gesundheitsdatenbefreier_mail_subject', 'gesundheitsdatenbefreier_good_bye_text', 'gesundheitsdatenbefreier_counter');

