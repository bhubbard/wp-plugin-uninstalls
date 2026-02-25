-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ep_regform', '_ep_invite_confirmed', '_ep_schedule_unit', '_ep_schedule_magnitude', '_ep_schedule_till', '_ep_schedule_series', '_ep_start', '_ep_end', '_ep_startreg', '_ep_stopreg', '_ep_confirmreg', '_wp_trash_meta_time', '_ep_invited_by', '_ep_map', '_ep_latlong', '_ep_venue', '_ep_limitreg');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ep_regform', '_ep_invite_confirmed', '_ep_schedule_unit', '_ep_schedule_magnitude', '_ep_schedule_till', '_ep_schedule_series', '_ep_start', '_ep_end', '_ep_startreg', '_ep_stopreg', '_ep_confirmreg', '_wp_trash_meta_time', '_ep_invited_by', '_ep_map', '_ep_latlong', '_ep_venue', '_ep_limitreg');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ep_regform', '_ep_invite_confirmed', '_ep_schedule_unit', '_ep_schedule_magnitude', '_ep_schedule_till', '_ep_schedule_series', '_ep_start', '_ep_end', '_ep_startreg', '_ep_stopreg', '_ep_confirmreg', '_wp_trash_meta_time', '_ep_invited_by', '_ep_map', '_ep_latlong', '_ep_venue', '_ep_limitreg');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ep_regform', '_ep_invite_confirmed', '_ep_schedule_unit', '_ep_schedule_magnitude', '_ep_schedule_till', '_ep_schedule_series', '_ep_start', '_ep_end', '_ep_startreg', '_ep_stopreg', '_ep_confirmreg', '_wp_trash_meta_time', '_ep_invited_by', '_ep_map', '_ep_latlong', '_ep_venue', '_ep_limitreg');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_ep_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_ep_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_ep_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ep_%';

