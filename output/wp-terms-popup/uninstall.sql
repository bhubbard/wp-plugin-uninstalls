-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptp_version', 'termsopt_agreetxt', 'termsopt_agree_redirecturl', 'termsopt_disagreetxt', 'termsopt_redirecturl', 'termsopt_buttons_always_visible', 'termsopt_adminenabled', 'termsopt_sitewide', 'termsopt_javascript', 'termsopt_page', 'termsopt_expiry', 'termsopt_user_visiblity', 'termsopt_opac');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('terms_agreetxt', 'terms_agree_redirecturl', 'terms_disagreetxt', 'terms_redirecturl', 'terms_buttons_always_visible', 'terms_acknowledgement_on', 'terms_acknowledgement_text', 'terms_age_on', 'terms_age_requirement', 'terms_age_date_format', 'terms_age_message', 'terms_disablepop', 'terms_enablepop', 'terms_selectedterms');
DELETE FROM wp_usermeta WHERE meta_key IN ('terms_agreetxt', 'terms_agree_redirecturl', 'terms_disagreetxt', 'terms_redirecturl', 'terms_buttons_always_visible', 'terms_acknowledgement_on', 'terms_acknowledgement_text', 'terms_age_on', 'terms_age_requirement', 'terms_age_date_format', 'terms_age_message', 'terms_disablepop', 'terms_enablepop', 'terms_selectedterms');
DELETE FROM wp_termmeta WHERE meta_key IN ('terms_agreetxt', 'terms_agree_redirecturl', 'terms_disagreetxt', 'terms_redirecturl', 'terms_buttons_always_visible', 'terms_acknowledgement_on', 'terms_acknowledgement_text', 'terms_age_on', 'terms_age_requirement', 'terms_age_date_format', 'terms_age_message', 'terms_disablepop', 'terms_enablepop', 'terms_selectedterms');
DELETE FROM wp_commentmeta WHERE meta_key IN ('terms_agreetxt', 'terms_agree_redirecturl', 'terms_disagreetxt', 'terms_redirecturl', 'terms_buttons_always_visible', 'terms_acknowledgement_on', 'terms_acknowledgement_text', 'terms_age_on', 'terms_age_requirement', 'terms_age_date_format', 'terms_age_message', 'terms_disablepop', 'terms_enablepop', 'terms_selectedterms');

