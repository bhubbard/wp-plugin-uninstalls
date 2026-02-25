-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bs_forms');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('price', 'currency', 'user-can-price', 'company-name', 'error-text', 'error-text-validation', 'button-text', 'checkout-text');
DELETE FROM wp_usermeta WHERE meta_key IN ('price', 'currency', 'user-can-price', 'company-name', 'error-text', 'error-text-validation', 'button-text', 'checkout-text');
DELETE FROM wp_termmeta WHERE meta_key IN ('price', 'currency', 'user-can-price', 'company-name', 'error-text', 'error-text-validation', 'button-text', 'checkout-text');
DELETE FROM wp_commentmeta WHERE meta_key IN ('price', 'currency', 'user-can-price', 'company-name', 'error-text', 'error-text-validation', 'button-text', 'checkout-text');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-output';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-output';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-output';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-output';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-t';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-t';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-t';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-t';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-translation';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-translation';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-translation';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-translation';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%-page';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%-page';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%-page';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-page';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'specific-page-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'specific-page-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'specific-page-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'specific-page-%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'redirect-url-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'redirect-url-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'redirect-url-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'redirect-url-%';

