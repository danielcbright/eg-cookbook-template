name 'COOKBOOKNAME'
supports 'SUPPORTS'
maintainer 'MAINTAINER'
maintainer_email 'EMAIL'
license 'LICENSE'
description 'SHORTDESCRIPTION'
long_description 'LONGDESCRIPTION'
version 'COOKBOOKVERSION'
chef_version 'CHEFVERSION' if respond_to?(:chef_version)
issues_url 'ISSUESURL'
source_url 'SOURCEURL'

depends 'eg-linux-base', '= 1.0.40'