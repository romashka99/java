/*хп заданий*/
CREATE OR REPLACE FUNCTION getTriangleSquare(ID_Triangle IN NUMBER)
RETURN NUMBER
AS 
    x1 NUMBER := 0;
    x2 NUMBER := 0;
    x3 NUMBER := 0;
    y1 NUMBER := 0;
    y2 NUMBER := 0;
    y3 NUMBER := 0;
    square NUMBER := 0;
BEGIN
    SELECT X INTO x1
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 1;
        
    SELECT Y INTO y1
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 1;
        
    SELECT X INTO x2
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 2;
        
    SELECT Y INTO y2
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 2;
        
    SELECT X INTO x3
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 3;
        
    SELECT Y INTO y3
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 3;
        
    square := ABS(((x2 - x1)*(y3 - y1) - (x3 - x1)*(y2 - y1)) / 2);
    RETURN square;
END;

CREATE OR REPLACE FUNCTION getTriangleRadius(ID_Triangle IN NUMBER)
RETURN NUMBER
AS 
    x1 NUMBER;
    x2 NUMBER;
    x3 NUMBER;
    y1 NUMBER;
    y2 NUMBER;
    y3 NUMBER;
    a NUMBER;
    b NUMBER;
    c NUMBER;
    r NUMBER;
BEGIN
    SELECT X INTO x1
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 1;
        
    SELECT Y INTO y1
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 1;
        
    SELECT X INTO x2
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 2;
        
    SELECT Y INTO y2
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 2;
        
    SELECT X INTO x3
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 3;
        
    SELECT Y INTO y3
    FROM FIGURE
    WHERE ID = ID_Triangle AND POINT = 3;
    
    a := SQRT(POWER((x1 - x2), 2) + POWER((y1 - y2), 2));
    b := SQRT(POWER((x2 - x3), 2) + POWER((y2 - y3), 2));
    c := SQRT(POWER((x3 - x1), 2) + POWER((y3 - y1), 2));
    
    r := (a * b * c) / (4 * getTriangleSquare(ID_Triangle));
    RETURN r;
END;

CREATE OR REPLACE FUNCTION getTriangleMinDifference(Square IN NUMBER)
RETURN NUMBER
AS 
    triangles NUMBER;
    min_dif NUMBER;
    temp NUMBER;
    ID_Triangle NUMBER := 0;
BEGIN
    SELECT MAX(ID) INTO triangles
    FROM FIGURE;
    FOR i IN 1 .. triangles
    LOOP
        temp := ABS (Square - getTriangleSquare(i));
        
        IF i = 1
            THEN min_dif := temp; ID_Triangle := i;
            ELSE IF min_dif > temp
                    THEN min_dif := temp; ID_Triangle := i;
                 END IF;
        END IF;
        
    END LOOP;
    RETURN ID_Triangle;
END;

/*select для задания*/
SELECT ID
FROM FIGURE
WHERE ID = getTriangleMinDifference(6)
GROUP BY ID

SELECT ID
FROM FIGURE
WHERE getTriangleRadius(ID) < 3
GROUP BY ID
