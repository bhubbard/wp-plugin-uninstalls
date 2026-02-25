-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CertificazioneEnergetica_opts');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('CertificazioneEnergetica_ad_code', 'CertificazioneEnergetica_option_txt', 'ace_post', 'ipe_post', 'unita_ipe');
DELETE FROM wp_usermeta WHERE meta_key IN ('CertificazioneEnergetica_ad_code', 'CertificazioneEnergetica_option_txt', 'ace_post', 'ipe_post', 'unita_ipe');
DELETE FROM wp_termmeta WHERE meta_key IN ('CertificazioneEnergetica_ad_code', 'CertificazioneEnergetica_option_txt', 'ace_post', 'ipe_post', 'unita_ipe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('CertificazioneEnergetica_ad_code', 'CertificazioneEnergetica_option_txt', 'ace_post', 'ipe_post', 'unita_ipe');

