-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SlothLogoCustomizer_AllowOverride', 'SlothLogoCustomizer_SitePoweredByURL', 'SlothLogoCustomizer_SitePoweredByTitle', 'SlothLogoCustomizer_SiteImageAttachmentId', 'SlothLogoCustomizer_SiteImageAttachmentURL', 'SlothLogoCustomizer_PoweredByURL', 'SlothLogoCustomizer_PoweredByTitle', 'SlothLogoCustomizer_imageAttachmentId', 'SlothLogoCustomizer_imageAttachmentURL');

