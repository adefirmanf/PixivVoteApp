pragma solidity ^0.4.23;


contract PixivRanking{

    uint public Idcount;
    
    constructor()public{}

    struct Member{ //Also known as Voters

    }

    struct Illustrator{
        uint Idcount;
        string MemberURL;
        string ImageURL;
        uint BookmarksCount;
    }
    
    mapping(uint => Illustrator) public illustrator;
    
    function Init() public{
        newIllustrator("https://www.pixiv.net/member.php?id=11075375", "https://www.pixiv.net/member_illust.php?mode=medium&illust_id=69375348");
        newIllustrator("https://www.pixiv.net/member.php?id=1313098", "https://www.pixiv.net/member_illust.php?mode=medium&illust_id=60017214");
    }

    function newIllustrator(string _MemberURL, string _ImageURL) public {
        Idcount++;
        illustrator[Idcount] = Illustrator(Idcount, _MemberURL, _ImageURL, 0);    
    }

    function addBookmarks(uint _Id) public {
        require(illustrator[_Id].Idcount > 0, "Illustrator ID not exist!"); /*
        Error Message can't shown on log. Please read the tutorial and the issue 
        [Tutorial]
        https://medium.com/blockchannel/the-use-of-revert-assert-and-require-in-solidity-and-the-new-revert-opcode-in-the-evm-1a3a7990e06e

        [Issue]
        https://github.com/ethereum/solidity/issues/1686#issuecomment-328181514

        But, for default transaction will revert
        */

        illustrator[_Id].BookmarksCount += 1;
    }

    function Ranking() private {}

}