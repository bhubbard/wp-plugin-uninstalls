<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SlothLogoCustomizer_AllowOverride');
delete_site_option('SlothLogoCustomizer_AllowOverride');
delete_option('SlothLogoCustomizer_SitePoweredByURL');
delete_site_option('SlothLogoCustomizer_SitePoweredByURL');
delete_option('SlothLogoCustomizer_SitePoweredByTitle');
delete_site_option('SlothLogoCustomizer_SitePoweredByTitle');
delete_option('SlothLogoCustomizer_SiteImageAttachmentId');
delete_site_option('SlothLogoCustomizer_SiteImageAttachmentId');
delete_option('SlothLogoCustomizer_SiteImageAttachmentURL');
delete_site_option('SlothLogoCustomizer_SiteImageAttachmentURL');
delete_option('SlothLogoCustomizer_PoweredByURL');
delete_site_option('SlothLogoCustomizer_PoweredByURL');
delete_option('SlothLogoCustomizer_PoweredByTitle');
delete_site_option('SlothLogoCustomizer_PoweredByTitle');
delete_option('SlothLogoCustomizer_imageAttachmentId');
delete_site_option('SlothLogoCustomizer_imageAttachmentId');
delete_option('SlothLogoCustomizer_imageAttachmentURL');
delete_site_option('SlothLogoCustomizer_imageAttachmentURL');

