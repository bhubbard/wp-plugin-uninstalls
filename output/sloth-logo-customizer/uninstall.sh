#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'SlothLogoCustomizer_AllowOverride'
wp option delete 'SlothLogoCustomizer_SitePoweredByURL'
wp option delete 'SlothLogoCustomizer_SitePoweredByTitle'
wp option delete 'SlothLogoCustomizer_SiteImageAttachmentId'
wp option delete 'SlothLogoCustomizer_SiteImageAttachmentURL'
wp option delete 'SlothLogoCustomizer_PoweredByURL'
wp option delete 'SlothLogoCustomizer_PoweredByTitle'
wp option delete 'SlothLogoCustomizer_imageAttachmentId'
wp option delete 'SlothLogoCustomizer_imageAttachmentURL'

