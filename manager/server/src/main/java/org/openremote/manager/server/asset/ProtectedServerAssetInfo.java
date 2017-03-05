/*
 * Copyright 2017, OpenRemote Inc.
 *
 * See the CONTRIBUTORS.txt file in the distribution for a
 * full listing of individual contributors.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package org.openremote.manager.server.asset;

import com.vividsolutions.jts.geom.Coordinate;
import com.vividsolutions.jts.geom.Geometry;
import elemental.json.JsonObject;
import org.openremote.model.asset.ProtectedAssetInfo;

import java.util.Date;

/**
 * Provides a constructor we can use in database query result marshaling.
 */
public class ProtectedServerAssetInfo extends ProtectedAssetInfo {

    public ProtectedServerAssetInfo(String id, long version, String name, Date createdOn, String realm, String type, String parentId, Geometry location, JsonObject attributes) {
        super(
            id, version, name, createdOn, realm, type, parentId,
            location != null ? new double[]{
                location.getCoordinate().getOrdinate(Coordinate.X),
                location.getCoordinate().getOrdinate(Coordinate.Y)
            } : null,
            attributes
        );
    }
}
