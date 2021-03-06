<?xml version="1.0"?>
<recipe>
    <instantiate from="root/build.gradle.ftl"
                   to="${escapeXmlAttribute(topOut)}/build.gradle" />
				   
	<instantiate from="root/README.md.ftl"
                   to="${escapeXmlAttribute(topOut)}/README.md" />

<#if makeIgnore>
    <copy from="root/project_ignore"
            to="${escapeXmlAttribute(topOut)}/.gitignore" />
</#if>

    <instantiate from="root/settings.gradle.ftl"
                   to="${escapeXmlAttribute(topOut)}/settings.gradle" />

    <instantiate from="root/gradle.properties.ftl"
                   to="${escapeXmlAttribute(topOut)}/gradle.properties" />

    <copy from="../../gradle/wrapper"
        to="${escapeXmlAttribute(topOut)}/" />

<#if sdkDir??>
  <instantiate from="root/local.properties.ftl"
           to="${escapeXmlAttribute(topOut)}/local.properties" />
</#if>
</recipe>
