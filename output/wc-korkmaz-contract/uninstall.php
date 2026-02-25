<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('birinci_sozlesme_link_ismi');
delete_site_option('birinci_sozlesme_link_ismi');
delete_option('ikinci_sozlesme_link_ismi');
delete_site_option('ikinci_sozlesme_link_ismi');
delete_option('firmaadi');
delete_site_option('firmaadi');
delete_option('firmaadresi');
delete_site_option('firmaadresi');
delete_option('firmatelno');
delete_site_option('firmatelno');
delete_option('firmaverdaire');
delete_site_option('firmaverdaire');
delete_option('firmaverno');
delete_site_option('firmaverno');
delete_option('sozlesme_mail_durumu');
delete_site_option('sozlesme_mail_durumu');
delete_option('korkmaz_contract_log_enabled');
delete_site_option('korkmaz_contract_log_enabled');
delete_option('alanlar_options');
delete_site_option('alanlar_options');
delete_option('sozlesme_ozellik_3');
delete_site_option('sozlesme_ozellik_3');
delete_option('sozlesme_ozellik_1');
delete_site_option('sozlesme_ozellik_1');
delete_option('sozlesme_ozellik_2');
delete_site_option('sozlesme_ozellik_2');
delete_option('sozlesme_ozellik_5');
delete_site_option('sozlesme_ozellik_5');
delete_option('sozlesme_ozellik_6');
delete_site_option('sozlesme_ozellik_6');
delete_option('sozlesme_ozellik_4');
delete_site_option('sozlesme_ozellik_4');
delete_option('birinci_sozlesme_metni');
delete_site_option('birinci_sozlesme_metni');
delete_option('ikinci_sozlesme_metni');
delete_site_option('ikinci_sozlesme_metni');
delete_option('ve_metin');
delete_site_option('ve_metin');
delete_option('son_metin');
delete_site_option('son_metin');

