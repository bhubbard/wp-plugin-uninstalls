-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('equipe_last_fetch_date', 'equipe_club_id', 'equipe_rider_licences', 'equipe_cat_show_jumping', 'equipe_cat_dressage', 'equipe_cat_eventing', 'equipe_cat_endurance', 'equipe_cat_breed_eval', 'equipe_cat_multi', 'equipe_cat_default', 'equipe_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('equipe_after_install_ignore_notice', 'equipe_id', 'equipe_start_date', 'equipe_end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('equipe_after_install_ignore_notice', 'equipe_id', 'equipe_start_date', 'equipe_end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('equipe_after_install_ignore_notice', 'equipe_id', 'equipe_start_date', 'equipe_end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('equipe_after_install_ignore_notice', 'equipe_id', 'equipe_start_date', 'equipe_end_date');

