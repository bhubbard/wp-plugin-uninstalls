<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wonderplugin_pdf_disabledownload');
delete_site_option('wonderplugin_pdf_disabledownload');
delete_option('wonderplugin_pdf_disableprint');
delete_site_option('wonderplugin_pdf_disableprint');
delete_option('wonderplugin_pdf_disabletext');
delete_site_option('wonderplugin_pdf_disabletext');
delete_option('wonderplugin_pdf_disabledoc');
delete_site_option('wonderplugin_pdf_disabledoc');
delete_option('wonderplugin_pdf_disableopenfile');
delete_site_option('wonderplugin_pdf_disableopenfile');
delete_option('wonderplugin_pdf_disabletoolbar');
delete_site_option('wonderplugin_pdf_disabletoolbar');
delete_option('wonderplugin_pdf_disablerightclick');
delete_site_option('wonderplugin_pdf_disablerightclick');
delete_option('wonderplugin_pdf_usedarktheme');
delete_site_option('wonderplugin_pdf_usedarktheme');
delete_option('wonderplugin_pdf_externallinktarget');
delete_site_option('wonderplugin_pdf_externallinktarget');
delete_option('wonderplugin_pdf_gaaccount');
delete_site_option('wonderplugin_pdf_gaaccount');
delete_option('wonderplugin_pdf_textselection');
delete_site_option('wonderplugin_pdf_textselection');
delete_option('wonderplugin_pdf_texthighlight');
delete_site_option('wonderplugin_pdf_texthighlight');
delete_option('wonderplugin_pdf_texthighlightselected');
delete_site_option('wonderplugin_pdf_texthighlightselected');

