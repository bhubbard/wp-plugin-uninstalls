-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('searchwp_modal_form_version', 'searchwp_modal_form_version_upgraded_from', 'searchwp_modal_form_last_update', 'searchwp_modal_form_activation_redirect', 'searchwp_modal_form_admin_notices', 'searchwp_modal_form_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_swp_modal_forms_use_icon', 'searchwp_modal_form_admin_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_swp_modal_forms_use_icon', 'searchwp_modal_form_admin_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_swp_modal_forms_use_icon', 'searchwp_modal_form_admin_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_swp_modal_forms_use_icon', 'searchwp_modal_form_admin_notices');

