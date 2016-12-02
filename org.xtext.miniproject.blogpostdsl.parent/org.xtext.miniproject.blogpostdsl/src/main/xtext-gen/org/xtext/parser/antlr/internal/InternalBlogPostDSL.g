/*
 * generated by Xtext 2.10.0
 */
grammar InternalBlogPostDSL;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.xtext.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.xtext.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.xtext.services.BlogPostDSLGrammarAccess;

}

@parser::members {

 	private BlogPostDSLGrammarAccess grammarAccess;

    public InternalBlogPostDSLParser(TokenStream input, BlogPostDSLGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Domainmodel";
   	}

   	@Override
   	protected BlogPostDSLGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleDomainmodel
entryRuleDomainmodel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDomainmodelRule()); }
	iv_ruleDomainmodel=ruleDomainmodel
	{ $current=$iv_ruleDomainmodel.current; }
	EOF;

// Rule Domainmodel
ruleDomainmodel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getDomainmodelAccess().getTagImportTagImportParserRuleCall_0_0());
				}
				lv_tagImport_0_0=ruleTagImport
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDomainmodelRule());
					}
					set(
						$current,
						"tagImport",
						lv_tagImport_0_0,
						"org.xtext.BlogPostDSL.TagImport");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getDomainmodelAccess().getItemElementItemElementParserRuleCall_1_0());
				}
				lv_itemElement_1_0=ruleItemElement
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDomainmodelRule());
					}
					set(
						$current,
						"itemElement",
						lv_itemElement_1_0,
						"org.xtext.BlogPostDSL.ItemElement");
					afterParserOrEnumRuleCall();
				}
			)
		)+
	)
;

// Entry rule entryRuleItemElement
entryRuleItemElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getItemElementRule()); }
	iv_ruleItemElement=ruleItemElement
	{ $current=$iv_ruleItemElement.current; }
	EOF;

// Rule ItemElement
ruleItemElement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getItemElementAccess().getBlogParserRuleCall_0());
		}
		this_Blog_0=ruleBlog
		{
			$current = $this_Blog_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getItemElementAccess().getArticleParserRuleCall_1());
		}
		this_Article_1=ruleArticle
		{
			$current = $this_Article_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleBlog
entryRuleBlog returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBlogRule()); }
	iv_ruleBlog=ruleBlog
	{ $current=$iv_ruleBlog.current; }
	EOF;

// Rule Blog
ruleBlog returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='{'
		{
			newLeafNode(otherlv_0, grammarAccess.getBlogAccess().getLeftCurlyBracketKeyword_0());
		}
		{
			newCompositeNode(grammarAccess.getBlogAccess().getTitleParserRuleCall_1());
		}
		this_Title_1=ruleTitle
		{
			$current = $this_Title_1.current;
			afterParserOrEnumRuleCall();
		}
		(
			otherlv_2=','
			{
				newLeafNode(otherlv_2, grammarAccess.getBlogAccess().getCommaKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getBlogAccess().getDateDateParserRuleCall_2_1_0());
					}
					lv_date_3_0=ruleDate
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getBlogRule());
						}
						set(
							$current,
							"date",
							lv_date_3_0,
							"org.xtext.BlogPostDSL.Date");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		(
			otherlv_4=','
			{
				newLeafNode(otherlv_4, grammarAccess.getBlogAccess().getCommaKeyword_3_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getBlogAccess().getTagTagsParserRuleCall_3_1_0());
					}
					lv_tag_5_0=ruleTags
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getBlogRule());
						}
						set(
							$current,
							"tag",
							lv_tag_5_0,
							"org.xtext.BlogPostDSL.Tags");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		otherlv_6='}'
		{
			newLeafNode(otherlv_6, grammarAccess.getBlogAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleArticle
entryRuleArticle returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getArticleRule()); }
	iv_ruleArticle=ruleArticle
	{ $current=$iv_ruleArticle.current; }
	EOF;

// Rule Article
ruleArticle returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='{'
		{
			newLeafNode(otherlv_0, grammarAccess.getArticleAccess().getLeftCurlyBracketKeyword_0());
		}
		{
			newCompositeNode(grammarAccess.getArticleAccess().getTitleParserRuleCall_1());
		}
		this_Title_1=ruleTitle
		{
			$current = $this_Title_1.current;
			afterParserOrEnumRuleCall();
		}
		(
			otherlv_2=','
			{
				newLeafNode(otherlv_2, grammarAccess.getArticleAccess().getCommaKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getArticleAccess().getDateDateParserRuleCall_2_1_0());
					}
					lv_date_3_0=ruleDate
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getArticleRule());
						}
						set(
							$current,
							"date",
							lv_date_3_0,
							"org.xtext.BlogPostDSL.Date");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		(
			otherlv_4=','
			{
				newLeafNode(otherlv_4, grammarAccess.getArticleAccess().getCommaKeyword_3_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getArticleAccess().getTagTagsParserRuleCall_3_1_0());
					}
					lv_tag_5_0=ruleTags
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getArticleRule());
						}
						set(
							$current,
							"tag",
							lv_tag_5_0,
							"org.xtext.BlogPostDSL.Tags");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		otherlv_6='}'
		{
			newLeafNode(otherlv_6, grammarAccess.getArticleAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleTagImport
entryRuleTagImport returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTagImportRule()); }
	iv_ruleTagImport=ruleTagImport
	{ $current=$iv_ruleTagImport.current; }
	EOF;

// Rule TagImport
ruleTagImport returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='tag '
		{
			newLeafNode(otherlv_0, grammarAccess.getTagImportAccess().getTagKeyword_0());
		}
		{
			newCompositeNode(grammarAccess.getTagImportAccess().getTagParserRuleCall_1());
		}
		this_Tag_1=ruleTag
		{
			$current = $this_Tag_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleTag
entryRuleTag returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTagRule()); }
	iv_ruleTag=ruleTag
	{ $current=$iv_ruleTag.current; }
	EOF;

// Rule Tag
ruleTag returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0=RULE_ID
			{
				newLeafNode(lv_name_0_0, grammarAccess.getTagAccess().getNameIDTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getTagRule());
				}
				setWithLastConsumed(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;

// Entry rule entryRuleTitle
entryRuleTitle returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTitleRule()); }
	iv_ruleTitle=ruleTitle
	{ $current=$iv_ruleTitle.current; }
	EOF;

// Rule Title
ruleTitle returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='title='
		{
			newLeafNode(otherlv_0, grammarAccess.getTitleAccess().getTitleKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ALPHANUMERICDASH
				{
					newLeafNode(lv_name_1_0, grammarAccess.getTitleAccess().getNameALPHANUMERICDASHTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTitleRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.xtext.BlogPostDSL.ALPHANUMERICDASH");
				}
			)
		)
	)
;

// Entry rule entryRuleDate
entryRuleDate returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDateRule()); }
	iv_ruleDate=ruleDate
	{ $current=$iv_ruleDate.current; }
	EOF;

// Rule Date
ruleDate returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='date='
		{
			newLeafNode(otherlv_0, grammarAccess.getDateAccess().getDateKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_BLOGDATE
				{
					newLeafNode(lv_name_1_0, grammarAccess.getDateAccess().getNameBLOGDATETerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getDateRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.xtext.BlogPostDSL.BLOGDATE");
				}
			)
		)
	)
;

// Entry rule entryRuleTags
entryRuleTags returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTagsRule()); }
	iv_ruleTags=ruleTags
	{ $current=$iv_ruleTags.current; }
	EOF;

// Rule Tags
ruleTags returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='tags=['
		{
			newLeafNode(otherlv_0, grammarAccess.getTagsAccess().getTagsKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTagsRule());
					}
				}
				otherlv_1=RULE_ID
				{
					newLeafNode(otherlv_1, grammarAccess.getTagsAccess().getNameTagCrossReference_1_0());
				}
			)
		)
		(
			otherlv_2=','
			{
				newLeafNode(otherlv_2, grammarAccess.getTagsAccess().getCommaKeyword_2_0());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getTagsRule());
						}
					}
					otherlv_3=RULE_ID
					{
						newLeafNode(otherlv_3, grammarAccess.getTagsAccess().getNameTagCrossReference_2_1_0());
					}
				)
			)
		)*
		otherlv_4=']'
		{
			newLeafNode(otherlv_4, grammarAccess.getTagsAccess().getRightSquareBracketKeyword_3());
		}
	)
;

RULE_ALPHANUMERICDASH : (('0'..'9'|'A'..'Z'|'a'..'z')* '-' ('0'..'9'|'A'..'Z'|'a'..'z')*)*;

RULE_BLOGDATE : '0'..'9' '0'..'9' '0'..'9' '0'..'9' '-' '0'..'9' '0'..'9' '-' '0'..'9' '0'..'9';

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;