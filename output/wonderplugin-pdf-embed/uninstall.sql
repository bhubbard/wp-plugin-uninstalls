-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wonderplugin_pdf_disabledownload', 'wonderplugin_pdf_disableprint', 'wonderplugin_pdf_disabletext', 'wonderplugin_pdf_disabledoc', 'wonderplugin_pdf_disableopenfile', 'wonderplugin_pdf_disabletoolbar', 'wonderplugin_pdf_disablerightclick', 'wonderplugin_pdf_usedarktheme', 'wonderplugin_pdf_externallinktarget', 'wonderplugin_pdf_gaaccount', 'wonderplugin_pdf_textselection', 'wonderplugin_pdf_texthighlight', 'wonderplugin_pdf_texthighlightselected');

