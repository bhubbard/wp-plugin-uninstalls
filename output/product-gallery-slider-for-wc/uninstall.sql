-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgsfw_layout', 'pgsfw_lstyle', 'pgsfw_msadisable', 'pgsfw_tadisable', 'pgsfw_dgimg', 'pgsfw_dgvgh', 'pgsfw_salp', 'pgsfw_sarp', 'arbgcolor', 'aricolor', 'harbgcolor', 'haricolor', 'mslidersize', 'tarrsize');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pgsw_youtube_url_field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pgsw_youtube_url_field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pgsw_youtube_url_field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pgsw_youtube_url_field');

