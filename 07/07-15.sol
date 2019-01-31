pragma solidity >=0.4.22 <0.6.0;

contract ArrayContract {
    uint[2 ** 20] m_aLotOfIntegers;

    // 고정 배열 요소 크기가 2인 bool 동적 배열입니다.
    bool[2][] m_pairsOfFlags;

    // newPairs는 memory 타입 배열입니다.
    function setAllFlagPairs(bool[2][] memory newPairs) public {
        // storage 타입 배열을 고정 배열로 덮어씁니다.
        m_pairsOfFlags = newPairs;
    }

    function setFlagPair(uint index, bool flagA, bool flagB) public {
        // 없는 배열 인덱스를 참조하면 에러가 발생합니다.
        m_pairsOfFlags[index][0] = flagA;
        m_pairsOfFlags[index][1] = flagB;
    }

    function changeFlagArraySize(uint newSize) public {
        // 새 배열 요소 크기가 작으면 삭제한 배열 요소만큼 배열 요소 크기를 조정합니다.
        m_pairsOfFlags.length = newSize;
    }

    function clear() public {
        // 배열을 완전히 삭제합니다.
        delete m_pairsOfFlags;
        delete m_aLotOfIntegers;

        // 배열 요소 크기를 0으로 설정하는 것도 배열을 삭제하는 것입니다.
        m_pairsOfFlags.length = 0;
    }

    bytes m_byteData;

    function byteArrays(bytes memory data) public {
        // bytes는 uint8[]와 같습니다.
        m_byteData = data;
        m_byteData.length += 7;
        m_byteData[3] = 0x08;
        delete m_byteData[2];
    }

    function addFlag(bool[2] memory flag) public returns (uint) {
        return m_pairsOfFlags.push(flag);
    }

    function createMemoryArray(uint size) public pure returns (bytes memory) {
        // memory 타입 동적 배열은 new 키워드로 만듭니다.
        uint[2][] memory arrayOfPairs = new uint[2][](size);
        arrayOfPairs[2][size]= 3;

        // 동적 바이트 배열 타입을 만듭니다.
        bytes memory b = new bytes(200);

        for (uint i = 0; i < b.length; i++)
            b[i] = byte(uint8(i));

        return b;
    }
}