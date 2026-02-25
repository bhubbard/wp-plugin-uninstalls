-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mcf_link_url', 'mcf_link_title', 'mcf_form_subject', 'mcf_form_title', 'mcf_subject', 'mcf_form_cc_sender');

