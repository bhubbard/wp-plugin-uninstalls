-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('npcc_activated_on', 'npcc_deactivated_on');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('np_ccode__ccode', 'np_ccode__discount_in', 'np_ccode__amt_per', 'np_ccode__ccstart_date', 'np_ccode__ccend_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('np_ccode__ccode', 'np_ccode__discount_in', 'np_ccode__amt_per', 'np_ccode__ccstart_date', 'np_ccode__ccend_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('np_ccode__ccode', 'np_ccode__discount_in', 'np_ccode__amt_per', 'np_ccode__ccstart_date', 'np_ccode__ccend_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('np_ccode__ccode', 'np_ccode__discount_in', 'np_ccode__amt_per', 'np_ccode__ccstart_date', 'np_ccode__ccend_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_discount_in';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_discount_in';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_discount_in';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_discount_in';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_amt_per';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_amt_per';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_amt_per';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_amt_per';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ccstart_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ccstart_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ccstart_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ccstart_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ccend_date';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ccend_date';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ccend_date';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ccend_date';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_ccode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_ccode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_ccode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_ccode';

