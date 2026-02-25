-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esig_global_document_id', 'remove_rating_widget_gravity', 'WP_ESignature__Gravity Form_documentation', '_esign_gravity_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'esig-gf-wc-agreement%';
DELETE FROM wp_options WHERE option_name LIKE 'esig-gf-redirect-%';
DELETE FROM wp_options WHERE option_name LIKE 'esig-gf-agreement-created%';

