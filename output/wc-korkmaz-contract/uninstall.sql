-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('birinci_sozlesme_link_ismi', 'ikinci_sozlesme_link_ismi', 'firmaadi', 'firmaadresi', 'firmatelno', 'firmaverdaire', 'firmaverno', 'sozlesme_mail_durumu', 'korkmaz_contract_log_enabled', 'alanlar_options', 'sozlesme_ozellik_3', 'sozlesme_ozellik_1', 'sozlesme_ozellik_2', 'sozlesme_ozellik_5', 'sozlesme_ozellik_6', 'sozlesme_ozellik_4', 'birinci_sozlesme_metni', 'ikinci_sozlesme_metni', 've_metin', 'son_metin');

