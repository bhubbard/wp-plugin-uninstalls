-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alquemie_audience_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alq_audience_division', 'alq_audience_subject', 'alq_audience_buyerstage', 'alq_audience_audience1', 'alq_audience_audience2');
DELETE FROM wp_usermeta WHERE meta_key IN ('alq_audience_division', 'alq_audience_subject', 'alq_audience_buyerstage', 'alq_audience_audience1', 'alq_audience_audience2');
DELETE FROM wp_termmeta WHERE meta_key IN ('alq_audience_division', 'alq_audience_subject', 'alq_audience_buyerstage', 'alq_audience_audience1', 'alq_audience_audience2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alq_audience_division', 'alq_audience_subject', 'alq_audience_buyerstage', 'alq_audience_audience1', 'alq_audience_audience2');

