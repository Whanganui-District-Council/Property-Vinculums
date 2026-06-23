<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor version="1.0.0"
    xmlns="http://www.opengis.net/sld"
    xmlns:ogc="http://www.opengis.net/ogc"
    xmlns:xlink="http://www.w3.org/1999/xlink"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="
      http://www.opengis.net/sld
      http://schemas.opengis.net/sld/1.0.0/StyledLayerDescriptor.xsd">

  <NamedLayer>
    <Name>property_vinculum</Name>
    <UserStyle>
      <Title>property_vinculum_clean</Title>

      <FeatureTypeStyle>

        <!-- 1. Line styling -->
        <Rule>
          <LineSymbolizer>
            <Stroke>
              <CssParameter name="stroke">#b7b7b7</CssParameter>
              <CssParameter name="stroke-width">1</CssParameter>
              <CssParameter name="stroke-linejoin">round</CssParameter>
              <CssParameter name="stroke-linecap">round</CssParameter>
              <CssParameter name="stroke-dasharray">4 4</CssParameter>
            </Stroke>
          </LineSymbolizer>
        </Rule>

        <!-- 2. Start point -->
        <Rule>
          <PointSymbolizer>
            <Geometry>
              <ogc:Function name="startPoint">
                <ogc:PropertyName>geom</ogc:PropertyName>
              </ogc:Function>
            </Geometry>
            <Graphic>
              <Mark>
                <WellKnownName>ttf://Arial#126</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#000000</CssParameter>
                </Fill>
              </Mark>
              <Size>16</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>

        <!-- 3. End point -->
        <Rule>
          <PointSymbolizer>
            <Geometry>
              <ogc:Function name="endPoint">
                <ogc:PropertyName>geom</ogc:PropertyName>
              </ogc:Function>
            </Geometry>
            <Graphic>
              <Mark>
                <WellKnownName>ttf://Arial#126</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#000000</CssParameter>
                </Fill>
              </Mark>
              <Size>16</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>

        <!-- 4. Labels -->
        <Rule>
          <TextSymbolizer>
            <Label>
              <ogc:PropertyName>prop_no</ogc:PropertyName>
            </Label>

            <Font>
              <CssParameter name="font-family">Arial</CssParameter>
              <CssParameter name="font-size">10</CssParameter>
              <CssParameter name="font-weight">bold</CssParameter>
            </Font>

            <LabelPlacement>
              <LinePlacement>
                <PerpendicularOffset>8</PerpendicularOffset>
              </LinePlacement>
            </LabelPlacement>

            <Halo>
              <Radius>2</Radius>
              <Fill>
                <CssParameter name="fill">#ffffff</CssParameter>
              </Fill>
            </Halo>

            <Fill>
              <CssParameter name="fill">#323232</CssParameter>
            </Fill>

          </TextSymbolizer>
        </Rule>

      </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>

</StyledLayerDescriptor>
