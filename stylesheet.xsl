<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.evolus.vn/Namespace/Pencil"
        xmlns:p="http://www.evolus.vn/Namespace/Pencil"
        xmlns:svg="http://www.w3.org/2000/svg"
        xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
        xmlns:xlink="http://www.w3.org/1999/xlink" version="1.0">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="files">
        <Shapes
        id="nz.nwatson.Twemoji"
        displayName="Twitter Emoji"
        description="Twitter Emoji (Twemoji) for Pencil.
        &#13;
        &#13;Emoji graphics are by Twitter and are licensed under CC-BY 4.0. See https://github.com/twitter/twemoji for details.
        &#13;Source code for generating this stencil collection can be found at https://github.com/nathanielw/Emoji-for-Pencil and is licensed under the MIT License."
        author="Emoji graphics by Twitter used under CC-BY 4.0. Pencil Stencil by Nathaniel Watson (nwatson.nz)"
        url="https://github.com/nathanielw/Twemoji-for-Pencil">
            <Properties>
                <PropertyGroup name="Collection settings">
                    <Property name="size" displayName="Default emoji size (width,height)" type="PlainText">16,16</Property>
                </PropertyGroup>
            </Properties>

            <xsl:apply-templates/>
        </Shapes>
    </xsl:template>

    <xsl:template match="files/file">
        <xsl:variable name="svg" xmlns:svg="http://www.w3.org/2000/svg" select="document(.)/svg:svg" />

        <Shape id="{./@id}" displayName="{./@name}" icon="{./@icon}">
            <Properties>
                <PropertyGroup>
                    <Property name="box" type="Dimension" p:lockRatio="true"><E>$$size</E></Property>
                </PropertyGroup>
            </Properties>

            <Behaviors>
                <For ref="icon">
                    <Transform>scale($box.w/47.5, $box.h/47.5)</Transform> <!-- hardcoded width and height - needs to change if the source svg sizes, optimally with the values extracted from the viewbox of each one -->
                </For>
                <For ref="bgRect">
                    <Box>$box</Box>
                </For>
            </Behaviors>
            <p:Content xmlns:p="http://www.evolus.vn/Namespace/Pencil" xmlns="http://www.w3.org/2000/svg">
                <rect id="bgRect" style="fill: #000000; fill-opacity: 0; stroke: none;" x="0" y="0" />
                <g id="icon">
                    <xsl:apply-templates select="$svg/*" />
                </g>
            </p:Content>
        </Shape>
    </xsl:template>

    <!-- Identity template to copy everything by default -->
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <!-- empty template to remove metadata -->
    <xsl:template match="svg:metadata" />

</xsl:stylesheet>
